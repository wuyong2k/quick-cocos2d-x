LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := cocos_extension_static

LOCAL_MODULE_FILENAME := libextension

LOCAL_SRC_FILES := AssetsManager/AssetsManager.cpp \
CCBReader/CCBAnimationManager.cpp \
CCBReader/CCBFileLoader.cpp \
CCBReader/CCBKeyframe.cpp \
CCBReader/CCBReader.cpp \
CCBReader/CCBSequence.cpp \
CCBReader/CCBSequenceProperty.cpp \
CCBReader/CCBValue.cpp \
CCBReader/CCControlButtonLoader.cpp \
CCBReader/CCControlLoader.cpp \
CCBReader/CCData.cpp \
CCBReader/CCLabelBMFontLoader.cpp \
CCBReader/CCLabelTTFLoader.cpp \
CCBReader/CCLayerColorLoader.cpp \
CCBReader/CCLayerGradientLoader.cpp \
CCBReader/CCLayerLoader.cpp \
CCBReader/CCMenuItemImageLoader.cpp \
CCBReader/CCMenuItemLoader.cpp \
CCBReader/CCNode+CCBRelativePositioning.cpp \
CCBReader/CCNodeLoader.cpp \
CCBReader/CCNodeLoaderLibrary.cpp \
CCBReader/CCParticleSystemQuadLoader.cpp \
CCBReader/CCScale9SpriteLoader.cpp \
CCBReader/CCScrollViewLoader.cpp \
CCBReader/CCSpriteLoader.cpp \
CocoStudio/Action/CCActionFrame.cpp \
CocoStudio/Action/CCActionFrameEasing.cpp \
CocoStudio/Action/CCActionManager.cpp \
CocoStudio/Action/CCActionNode.cpp \
CocoStudio/Action/CCActionObject.cpp \
CocoStudio/Armature/animation/CCArmatureAnimation.cpp \
CocoStudio/Armature/animation/CCProcessBase.cpp \
CocoStudio/Armature/animation/CCTween.cpp \
CocoStudio/Armature/CCArmature.cpp \
CocoStudio/Armature/CCBone.cpp \
CocoStudio/Armature/datas/CCDatas.cpp \
CocoStudio/Armature/display/CCBatchNode.cpp \
CocoStudio/Armature/display/CCDecorativeDisplay.cpp \
CocoStudio/Armature/display/CCDisplayFactory.cpp \
CocoStudio/Armature/display/CCDisplayManager.cpp \
CocoStudio/Armature/display/CCSkin.cpp \
CocoStudio/Armature/physics/CCColliderDetector.cpp \
CocoStudio/Armature/utils/CCArmatureDataManager.cpp \
CocoStudio/Armature/utils/CCArmatureDefine.cpp \
CocoStudio/Armature/utils/CCDataReaderHelper.cpp \
CocoStudio/Armature/utils/CCSpriteFrameCacheHelper.cpp \
CocoStudio/Armature/utils/CCTransformHelp.cpp \
CocoStudio/Armature/utils/CCTweenFunction.cpp \
CocoStudio/Armature/utils/CCUtilMath.cpp \
CocoStudio/Components/CCComAttribute.cpp \
CocoStudio/Components/CCComAudio.cpp \
CocoStudio/Components/CCComController.cpp \
CocoStudio/Components/CCComRender.cpp \
CocoStudio/Components/CCInputDelegate.cpp \
CocoStudio/GUI/BaseClasses/UIRootWidget.cpp \
CocoStudio/GUI/BaseClasses/UIWidget.cpp \
CocoStudio/GUI/Layouts/Layout.cpp \
CocoStudio/GUI/Layouts/LayoutParameter.cpp \
CocoStudio/GUI/Layouts/UILayoutDefine.cpp \
CocoStudio/GUI/System/CocosGUI.cpp \
CocoStudio/GUI/System/UIHelper.cpp \
CocoStudio/GUI/System/UIInputManager.cpp \
CocoStudio/GUI/System/UILayer.cpp \
CocoStudio/GUI/UIWidgets/ScrollWidget/UIDragPanel.cpp \
CocoStudio/GUI/UIWidgets/ScrollWidget/UIListView.cpp \
CocoStudio/GUI/UIWidgets/ScrollWidget/UIPageView.cpp \
CocoStudio/GUI/UIWidgets/ScrollWidget/UIScrollView.cpp \
CocoStudio/GUI/UIWidgets/UIButton.cpp \
CocoStudio/GUI/UIWidgets/UICheckBox.cpp \
CocoStudio/GUI/UIWidgets/UIImageView.cpp \
CocoStudio/GUI/UIWidgets/UILabel.cpp \
CocoStudio/GUI/UIWidgets/UILabelAtlas.cpp \
CocoStudio/GUI/UIWidgets/UILabelBMFont.cpp \
CocoStudio/GUI/UIWidgets/UILoadingBar.cpp \
CocoStudio/GUI/UIWidgets/UISlider.cpp \
CocoStudio/GUI/UIWidgets/UISwitch.cpp \
CocoStudio/GUI/UIWidgets/UITextField.cpp \
CocoStudio/Json/CSContentJsonDictionary.cpp \
CocoStudio/Json/DictionaryHelper.cpp \
CocoStudio/Json/lib_json/json_reader.cpp \
CocoStudio/Json/lib_json/json_value.cpp \
CocoStudio/Json/lib_json/json_writer.cpp \
CocoStudio/Reader/CCSGUIReader.cpp \
CocoStudio/Reader/CCSSceneReader.cpp \
GUI/CCControlExtension/CCControl.cpp \
GUI/CCControlExtension/CCControlButton.cpp \
GUI/CCControlExtension/CCControlColourPicker.cpp \
GUI/CCControlExtension/CCControlHuePicker.cpp \
GUI/CCControlExtension/CCControlPotentiometer.cpp \
GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
GUI/CCControlExtension/CCControlSlider.cpp \
GUI/CCControlExtension/CCControlStepper.cpp \
GUI/CCControlExtension/CCControlSwitch.cpp \
GUI/CCControlExtension/CCControlUtils.cpp \
GUI/CCControlExtension/CCInvocation.cpp \
GUI/CCControlExtension/CCScale9Sprite.cpp \
GUI/CCEditBox/CCEditBox.cpp \
GUI/CCEditBox/CCEditBoxImplAndroid.cpp \
GUI/CCEditBox/CCEditBoxImplNone.cpp \
GUI/CCEditBox/CCEditBoxImplWin.cpp \
GUI/CCScrollView/CCScrollView.cpp \
GUI/CCScrollView/CCSorting.cpp \
GUI/CCScrollView/CCTableView.cpp \
GUI/CCScrollView/CCTableViewCell.cpp \
network/WebSocket.cpp

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_curl_static
LOCAL_WHOLE_STATIC_LIBRARIES += libwebsockets_static

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH) \
                           $(LOCAL_PATH)/CCBReader \
                           $(LOCAL_PATH)/Components \
                           $(LOCAL_PATH)/GUI/CCControlExtension \
                           $(LOCAL_PATH)/GUI/CCScrollView \
                           $(LOCAL_PATH)/GUI/CCEditBox \
                           $(LOCAL_PATH)/network \
                           $(LOCAL_PATH)/CocoStudio \
                           $(LOCAL_PATH)/../../third_party/chipmunk/include

LOCAL_C_INCLUDES = $(LOCAL_EXPORT_C_INCLUDES)

LOCAL_CFLAGS := -fexceptions

include $(BUILD_STATIC_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,CocosDenshion/android)
$(call import-module,external/libwebsockets/android)
