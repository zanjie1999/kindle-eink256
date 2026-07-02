.class public abstract Lcom/amazon/ksdk/presets/ReadingPresetsManager;
.super Ljava/lang/Object;
.source "ReadingPresetsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Lcom/amazon/ksdk/presets/ContextManager;)Lcom/amazon/ksdk/presets/ReadingPresetsManager;
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->createInstance(Lcom/amazon/ksdk/presets/ContextManager;)Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p0

    return-object p0
.end method

.method public static deleteInstance()V
    .locals 0

    .line 94
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->deleteInstance()V

    return-void
.end method

.method public static instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;
    .locals 1

    .line 89
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;
.end method

.method public abstract activatePreset(I)Z
.end method

.method public abstract activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;
.end method

.method public abstract addObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
.end method

.method public abstract bookLoadEventCalled()V
.end method

.method public abstract builtInPresetInfoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract customPresetInfo()Lcom/amazon/ksdk/presets/ReadingPresetInfo;
.end method

.method public abstract deletePreset(I)Z
.end method

.method public abstract fontManagerInstance()Lcom/amazon/ksdk/presets/FontManager;
.end method

.method public abstract hidePreset(I)Z
.end method

.method public abstract justificationAllowedByRenderer(Z)V
.end method

.method public abstract migratePresets(Ljava/lang/String;)V
.end method

.method public abstract multiColumnAllowedByRenderer(Z)V
.end method

.method public abstract pageTurnAnimationAllowed(Z)V
.end method

.method public abstract presetInfo(I)Lcom/amazon/ksdk/presets/ReadingPresetInfo;
.end method

.method public abstract presetInfoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract presetInfoMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
.end method

.method public abstract renamePreset(ILjava/lang/String;)Z
.end method

.method public abstract savePreset(Ljava/lang/String;)Z
.end method

.method public abstract showPreset(I)Z
.end method

.method public abstract updatePreset(I)Z
.end method

.method public abstract userDefinedPresetInfoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method
