## XiaomiParts Package

- Clone this repository to packages/apps/XiaomiParts directory in your AOSP build tree:

```
croot && git clone https://github.com/angelomds42/packages_apps_XiaomiParts packages/apps/XiaomiParts
```

- Include the app during compilation by adding the following to device-*.mk:

```
# XiaomiParts
include packages/apps/XiaomiParts/device.mk
```

This line includes the [device.mk](https://github.com/angelomds42/packages_apps_XiaomiParts/blob/fifteen/device.mk) file from the XiaomiParts repository, which will add the XiaomiParts application and the necessary security policies (sepolicies) to your AOSP build during compilation.

Drop the default XiaomiParts package in your tree, just like [this commit](https://github.com/SM8250-Development/device_xiaomi_sm8250-common/commit/cfb0a14e533284ab299094c6a5a9d80d3159af31).

# Overlay configs
Most feature flags and device-specific paths are configured via resource overlays. This method enables you to tailor the app for your hardware by enabling/disabling features and setting correct paths without modifying the base source code.

Refer to the base [config.xml](https://github.com/Xiaomi-Development/packages_apps_XiaomiParts/blob/15/res/values/config.xml) as a reference for your implementation.

## Testing changes

- When testing new changes, it is much faster to compile the application standalone and update it manually rather than running a full AOSP build. Please note that some changes may require you to chmod 0666 sysfs nodes and set selinux to permissive. When compiling a full AOSP build, this is not needed assuming the init cmds and sepolicies have been properly configured.

Lunch your device and run the following cmd:

```
m XiaomiParts
```
- This also assumes you are already running an AOSP build including XiaomiParts as a priv-app in /system_ext.

## Credits

| Repository                                                        |                                                                       |
| ----------------------------------------------------------- | --------------------------------------------------------------------------- |
| [XiaomiParts](https://github.com/angelomds42/packages_apps_XiaomiParts)                                                 | Thanks for the README                              |

