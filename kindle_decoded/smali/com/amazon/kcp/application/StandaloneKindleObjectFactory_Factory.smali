.class public final Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;
.super Ljava/lang/Object;
.source "StandaloneKindleObjectFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityStateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final accountSecretProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final androidApplicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;"
        }
    .end annotation
.end field

.field private final androidSecurityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;"
        }
    .end annotation
.end field

.field private final assetStateManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final associateInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final brightnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastReceiverHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final contentOpenMetricsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final coverManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            ">;"
        }
    .end annotation
.end field

.field private final customActionMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCustomSelectionButtonsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private final fileSystemProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final groupServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/IGroupService;",
            ">;"
        }
    .end annotation
.end field

.field private final keyEventControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;"
        }
    .end annotation
.end field

.field private final markedPositionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/config/IModuleInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final panelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerLayoutCustomizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private final readerNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IRegistrationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final shareHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IShareHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final sidecarProviderRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final synchronizationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userSettingsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/config/IModuleInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/IGroupService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IRegistrationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IShareHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 136
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->coverManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 137
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->associateInformationProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 138
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->moduleInitializerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 139
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->deviceInformationProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 140
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->sidecarProviderRegistryProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 141
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->libraryServiceProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 142
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->groupServiceProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 143
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->fileSystemProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 144
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 145
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->broadcastReceiverHelperProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 146
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 147
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->accessibilityStateListenerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 148
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->panelControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 149
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->registrationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 150
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->shareHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 151
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->contentOpenMetricsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 152
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->userSettingsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 153
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->keyEventControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 154
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->customActionMenuControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 155
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->defaultCustomSelectionButtonsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 157
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->deviceContextProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 158
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->brightnessManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 159
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->markedPositionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 160
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->readerLayoutCustomizerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 161
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->androidApplicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 162
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 163
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->accountSecretProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 164
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->androidSecurityProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 165
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->synchronizationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 166
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->readerNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 167
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 168
    iput-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->downloadServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/config/IModuleInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/IGroupService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IRegistrationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IShareHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;)",
            "Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    .line 311
    new-instance v33, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;

    move-object/from16 v0, v33

    invoke-direct/range {v0 .. v32}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v33
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/cover/ICoverImageService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAssociateInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/config/IModuleInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sidecar/ISidecarProviderRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/content/IGroupService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/io/IFileConnectionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/util/BroadcastReceiverHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IRegistrationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IShareHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/KeyEventController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IDeviceContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IAndroidApplicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/library/ILibraryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mobipocket/android/library/reader/AndroidSecurity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/sync/SynchronizationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/notifications/ReaderNotificationsManagerEx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IDownloadService;",
            ">;)",
            "Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;"
        }
    .end annotation

    .line 242
    new-instance v33, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;

    move-object/from16 v0, v33

    .line 243
    invoke-static/range {p0 .. p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    .line 244
    invoke-static/range {p1 .. p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    .line 245
    invoke-static/range {p2 .. p2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    .line 246
    invoke-static/range {p3 .. p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 247
    invoke-static/range {p4 .. p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    .line 248
    invoke-static/range {p5 .. p5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    .line 249
    invoke-static/range {p6 .. p6}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    .line 250
    invoke-static/range {p7 .. p7}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    .line 251
    invoke-static/range {p8 .. p8}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    .line 252
    invoke-static/range {p9 .. p9}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    .line 253
    invoke-static/range {p10 .. p10}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v11

    .line 254
    invoke-static/range {p11 .. p11}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v12

    .line 255
    invoke-static/range {p12 .. p12}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v13

    .line 256
    invoke-static/range {p13 .. p13}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v14

    .line 257
    invoke-static/range {p14 .. p14}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v15

    .line 258
    invoke-static/range {p15 .. p15}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v16

    .line 259
    invoke-static/range {p16 .. p16}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v17

    .line 260
    invoke-static/range {p17 .. p17}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v18

    .line 261
    invoke-static/range {p18 .. p18}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v19

    .line 262
    invoke-static/range {p19 .. p19}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v20

    .line 263
    invoke-static/range {p20 .. p20}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v21

    .line 264
    invoke-static/range {p21 .. p21}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v22

    .line 265
    invoke-static/range {p22 .. p22}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v23

    .line 266
    invoke-static/range {p23 .. p23}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v24

    .line 267
    invoke-static/range {p24 .. p24}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v25

    .line 268
    invoke-static/range {p25 .. p25}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v26

    .line 269
    invoke-static/range {p26 .. p26}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v27

    .line 270
    invoke-static/range {p27 .. p27}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v28

    .line 271
    invoke-static/range {p28 .. p28}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v29

    .line 272
    invoke-static/range {p29 .. p29}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v30

    .line 273
    invoke-static/range {p30 .. p30}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v31

    .line 274
    invoke-static/range {p31 .. p31}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v32

    invoke-direct/range {v0 .. v32}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;-><init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v33
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;
    .locals 34

    move-object/from16 v0, p0

    .line 173
    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->coverManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->associateInformationProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->moduleInitializerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->deviceInformationProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->sidecarProviderRegistryProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->libraryServiceProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->groupServiceProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->fileSystemProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->broadcastReceiverHelperProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->accessibilityStateListenerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->panelControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->registrationManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->shareHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->contentOpenMetricsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->userSettingsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->keyEventControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->customActionMenuControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->defaultCustomSelectionButtonsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->deviceContextProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->brightnessManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->markedPositionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->readerLayoutCustomizerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->androidApplicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->libraryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->accountSecretProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->androidSecurityProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->synchronizationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->readerNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->assetStateManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->downloadServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    move-object/from16 v1, v33

    invoke-static/range {v1 .. v32}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneKindleObjectFactory_Factory;->get()Lcom/amazon/kcp/application/StandaloneKindleObjectFactory;

    move-result-object v0

    return-object v0
.end method
