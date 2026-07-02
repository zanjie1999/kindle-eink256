.class final Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;
.super Lcom/amazon/ksdk/presets/ReadingPresetsManager;
.source "ReadingPresetsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ksdk/presets/ReadingPresetsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CppProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-class v0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 107
    iput-wide p1, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "nativeRef is zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static native createInstance(Lcom/amazon/ksdk/presets/ContextManager;)Lcom/amazon/ksdk/presets/ReadingPresetsManager;
.end method

.method public static native deleteInstance()V
.end method

.method public static native instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_aaSettings(J)Lcom/amazon/ksdk/presets/AaSettingsConfiguration;
.end method

.method private native native_activatePreset(JI)Z
.end method

.method private native native_activePreset(J)Lcom/amazon/ksdk/presets/ReadingPreset;
.end method

.method private native native_addObserver(JLcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
.end method

.method private native native_bookLoadEventCalled(J)V
.end method

.method private native native_builtInPresetInfoList(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native native_customPresetInfo(J)Lcom/amazon/ksdk/presets/ReadingPresetInfo;
.end method

.method private native native_deletePreset(JI)Z
.end method

.method private native native_fontManagerInstance(J)Lcom/amazon/ksdk/presets/FontManager;
.end method

.method private native native_hidePreset(JI)Z
.end method

.method private native native_justificationAllowedByRenderer(JZ)V
.end method

.method private native native_migratePresets(JLjava/lang/String;)V
.end method

.method private native native_multiColumnAllowedByRenderer(JZ)V
.end method

.method private native native_pageTurnAnimationAllowed(JZ)V
.end method

.method private native native_presetInfo(JI)Lcom/amazon/ksdk/presets/ReadingPresetInfo;
.end method

.method private native native_presetInfoList(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native native_presetInfoMap(J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native native_removeObserver(JLcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
.end method

.method private native native_renamePreset(JILjava/lang/String;)Z
.end method

.method private native native_savePreset(JLjava/lang/String;)Z
.end method

.method private native native_showPreset(JI)Z
.end method

.method private native native_updatePreset(JI)Z
.end method

.method private native native_userDefinedPresetInfoList(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public _djinni_private_destroy()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeDestroy(J)V

    :cond_0
    return-void
.end method

.method public aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_aaSettings(J)Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public activatePreset(I)Z
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_activatePreset(JI)Z

    move-result p1

    return p1
.end method

.method public activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_activePreset(J)Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    return-object v0
.end method

.method public addObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
    .locals 2

    .line 261
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_addObserver(JLcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    return-void
.end method

.method public bookLoadEventCalled()V
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_bookLoadEventCalled(J)V

    return-void
.end method

.method public builtInPresetInfoList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation

    .line 149
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_builtInPresetInfoList(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public customPresetInfo()Lcom/amazon/ksdk/presets/ReadingPresetInfo;
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_customPresetInfo(J)Lcom/amazon/ksdk/presets/ReadingPresetInfo;

    move-result-object v0

    return-object v0
.end method

.method public deletePreset(I)Z
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_deletePreset(JI)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->_djinni_private_destroy()V

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exception: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public fontManagerInstance()Lcom/amazon/ksdk/presets/FontManager;
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_fontManagerInstance(J)Lcom/amazon/ksdk/presets/FontManager;

    move-result-object v0

    return-object v0
.end method

.method public hidePreset(I)Z
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_hidePreset(JI)Z

    move-result p1

    return p1
.end method

.method public justificationAllowedByRenderer(Z)V
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_justificationAllowedByRenderer(JZ)V

    return-void
.end method

.method public migratePresets(Ljava/lang/String;)V
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_migratePresets(JLjava/lang/String;)V

    return-void
.end method

.method public multiColumnAllowedByRenderer(Z)V
    .locals 2

    .line 293
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_multiColumnAllowedByRenderer(JZ)V

    return-void
.end method

.method public pageTurnAnimationAllowed(Z)V
    .locals 2

    .line 301
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_pageTurnAnimationAllowed(JZ)V

    return-void
.end method

.method public presetInfo(I)Lcom/amazon/ksdk/presets/ReadingPresetInfo;
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_presetInfo(JI)Lcom/amazon/ksdk/presets/ReadingPresetInfo;

    move-result-object p1

    return-object p1
.end method

.method public presetInfoList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation

    .line 141
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_presetInfoList(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public presetInfoMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation

    .line 173
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_presetInfoMap(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public removeObserver(Lcom/amazon/ksdk/presets/ReadingPresetsObserver;)V
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_removeObserver(JLcom/amazon/ksdk/presets/ReadingPresetsObserver;)V

    return-void
.end method

.method public renamePreset(ILjava/lang/String;)Z
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_renamePreset(JILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public savePreset(Ljava/lang/String;)Z
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_savePreset(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public showPreset(I)Z
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_showPreset(JI)Z

    move-result p1

    return p1
.end method

.method public updatePreset(I)Z
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_updatePreset(JI)Z

    move-result p1

    return p1
.end method

.method public userDefinedPresetInfoList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/ReadingPresetInfo;",
            ">;"
        }
    .end annotation

    .line 157
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager$CppProxy;->native_userDefinedPresetInfoList(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
