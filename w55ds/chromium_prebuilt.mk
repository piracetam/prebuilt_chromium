# Copyright (C) 2014 The OmniROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := prebuilts/chromium/w55ds/

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/app/webview/webview.apk:system/app/webview/webview.apk \
    $(LOCAL_PATH)/lib/libwebviewchromium.so:system/lib/libwebviewchromium.so \
    $(LOCAL_PATH)/lib/libwebviewchromium_plat_support.so:system/lib/libwebviewchromium_plat_support.so \
    $(LOCAL_PATH)/lib/libwebviewchromium_loader.so:system/lib/libwebviewchromium_loader.so

$(shell mkdir -p out/target/product/w55ds/system/app/webview/lib/arm/)
$(shell cp -r $(LOCAL_PATH)/app/webview/lib/arm/libwebviewchromium.so out/target/product/w55ds/system/app/webview/lib/arm/libwebviewchromium.so)
