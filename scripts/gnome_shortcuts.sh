#!/bin/bash

echo "🚀 Bắt đầu cấu hình phím tắt tối ưu cho GNOME..."

# =====================================================================
# STEP 1: Giải phóng phím tắt Super + [1-4] (Xóa tính năng mở ứng dụng)
# =====================================================================
echo "🧹 Đang tắt tính năng mở ứng dụng mặc định của GNOME..."
for i in {1..4}; do
  gsettings set org.gnome.shell.keybindings switch-to-application-$i "[]"
done

# Đề phòng trường hợp hệ thống có cài dock mở rộng
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false 2>/dev/null
gsettings set org.gnome.shell.extensions.dash-to-ubuntu-dock hot-keys false 2>/dev/null

# =====================================================================
# STEP 2: Cấu hình bổ sung (Yêu cầu mới)
# =====================================================================
echo "🛠️ Đang cấu hình các phím tắt hệ thống..."

# 1. Loại bỏ phím tắt mặc định Super+V (Mở khay thông báo / Notification list)
gsettings set org.gnome.shell.keybindings toggle-message-tray "[]"

# 2. Thay thế phím tắt đóng window (Alt+F4) thành Super+Q
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

# 3. Chuyển Alt+Tab và Alt+Shift+Tab để chuyển đổi WINDOW (thay vì switch ứng dụng gom nhóm)
# Đầu tiên, xóa Alt+Tab khỏi tính năng switch-applications mặc định
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"

# Sau đó, gán Alt+Tab cho tính năng switch-windows (chuyển trực tiếp giữa các cửa sổ)
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"

# =====================================================================
# STEP 3: Cấu hình phím tắt Workspace
# =====================================================================
echo "⚙️ Đang thiết lập phím tắt Workspace..."

# 1. Chuyển nhanh đến Workspace cụ thể (Super + Số)
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"

# 2. Di chuyển cửa sổ sang Workspace cụ thể (Super + Shift + Số)
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Shift>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super><Shift>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super><Shift>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super><Shift>4']"

# 3. Điều hướng qua lại bằng mũi tên (Super + Mũi tên trái/phải)
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Right']"

# 4. Di chuyển cửa sổ bằng mũi tên (Super + Shift + Mũi tên trái/phải)
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift>Right']"

# =====================================================================
# STEP 4: Cố định số lượng Workspace
# =====================================================================
echo "📦 Đang cố định số lượng Workspace thành 4..."
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

echo "✅ Hoàn tất toàn bộ cấu hình! Các thay đổi có hiệu lực ngay lập tức."
