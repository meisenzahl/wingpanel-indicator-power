/*
 * Copyright (c) 2011-2018 elementary LLC. (https://elementary.io)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street - Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

namespace Power.Services.DBusInterfaces {
    [DBus (name = "org.freedesktop.UPower")]
    public interface UPower : Object {
        public abstract ObjectPath[] enumerate_devices () throws GLib.Error;
        public abstract ObjectPath get_display_device () throws GLib.Error;

        public signal void DeviceAdded (ObjectPath device_path);
        public signal void DeviceRemoved (ObjectPath device_path);
    }
}
