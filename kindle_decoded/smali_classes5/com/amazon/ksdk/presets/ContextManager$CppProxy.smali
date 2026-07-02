.class final Lcom/amazon/ksdk/presets/ContextManager$CppProxy;
.super Lcom/amazon/ksdk/presets/ContextManager;
.source "ContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ksdk/presets/ContextManager;
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

    .line 210
    const-class v0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/amazon/ksdk/presets/ContextManager;-><init>()V

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 218
    iput-wide p1, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    return-void

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "nativeRef is zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static native createInstance(Lcom/amazon/ksdk/presets/DeviceContext;Lcom/amazon/ksdk/presets/BookContext;Lcom/amazon/ksdk/presets/ViewContext;)Lcom/amazon/ksdk/presets/ContextManager;
.end method

.method public static native createInstanceForDevice(Lcom/amazon/ksdk/presets/DeviceType;)Lcom/amazon/ksdk/presets/ContextManager;
.end method

.method public static native createInstanceWithUserContext(Lcom/amazon/ksdk/presets/DeviceContext;Lcom/amazon/ksdk/presets/UserContext;Lcom/amazon/ksdk/presets/BookContext;Lcom/amazon/ksdk/presets/ViewContext;)Lcom/amazon/ksdk/presets/ContextManager;
.end method

.method public static native deleteInstance()V
.end method

.method public static native instance()Lcom/amazon/ksdk/presets/ContextManager;
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_addObserver(JLcom/amazon/ksdk/presets/ContextObserver;)V
.end method

.method private native native_bookContext(J)Lcom/amazon/ksdk/presets/BookContext;
.end method

.method private native native_checkWeblabEnabled(JLjava/lang/String;)Z
.end method

.method private native native_deviceContext(J)Lcom/amazon/ksdk/presets/DeviceContext;
.end method

.method private native native_presetThemesEnabled(J)Z
.end method

.method private native native_removeObserver(JLcom/amazon/ksdk/presets/ContextObserver;)V
.end method

.method private native native_removeUserData(J)V
.end method

.method private native native_setBookContext(JLcom/amazon/ksdk/presets/BookContext;)Z
.end method

.method private native native_setDeviceContext(JLcom/amazon/ksdk/presets/DeviceContext;)Z
.end method

.method private native native_setPresetThemesEnabled(JZ)V
.end method

.method private native native_setUserContext(JLcom/amazon/ksdk/presets/UserContext;)Z
.end method

.method private native native_setViewContext(JLcom/amazon/ksdk/presets/ViewContext;)Z
.end method

.method private native native_setWeblabContext(JLcom/amazon/ksdk/presets/WeblabContext;)Z
.end method

.method private native native_userContext(J)Lcom/amazon/ksdk/presets/UserContext;
.end method

.method private native native_validBookContext(J)Z
.end method

.method private native native_validDeviceContext(J)Z
.end method

.method private native native_validUserContext(J)Z
.end method

.method private native native_validViewContext(J)Z
.end method

.method private native native_viewContext(J)Lcom/amazon/ksdk/presets/ViewContext;
.end method

.method private native native_weblabContext(J)Lcom/amazon/ksdk/presets/WeblabContext;
.end method

.method private native native_writablePathForDevice(J)Ljava/lang/String;
.end method

.method public static native setApplicationDirectory(Ljava/lang/String;)V
.end method


# virtual methods
.method public _djinni_private_destroy()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeDestroy(J)V

    :cond_0
    return-void
.end method

.method public addObserver(Lcom/amazon/ksdk/presets/ContextObserver;)V
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_addObserver(JLcom/amazon/ksdk/presets/ContextObserver;)V

    return-void
.end method

.method public bookContext()Lcom/amazon/ksdk/presets/BookContext;
    .locals 2

    .line 300
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_bookContext(J)Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    return-object v0
.end method

.method public checkWeblabEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 332
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_checkWeblabEnabled(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deviceContext()Lcom/amazon/ksdk/presets/DeviceContext;
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_deviceContext(J)Lcom/amazon/ksdk/presets/DeviceContext;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->_djinni_private_destroy()V

    .line 232
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    sget-object v1, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->log:Ljava/util/logging/Logger;

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

.method public presetThemesEnabled()Z
    .locals 2

    .line 388
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_presetThemesEnabled(J)Z

    move-result v0

    return v0
.end method

.method public removeObserver(Lcom/amazon/ksdk/presets/ContextObserver;)V
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_removeObserver(JLcom/amazon/ksdk/presets/ContextObserver;)V

    return-void
.end method

.method public removeUserData()V
    .locals 2

    .line 404
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_removeUserData(J)V

    return-void
.end method

.method public setBookContext(Lcom/amazon/ksdk/presets/BookContext;)Z
    .locals 2

    .line 308
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_setBookContext(JLcom/amazon/ksdk/presets/BookContext;)Z

    move-result p1

    return p1
.end method

.method public setDeviceContext(Lcom/amazon/ksdk/presets/DeviceContext;)Z
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_setDeviceContext(JLcom/amazon/ksdk/presets/DeviceContext;)Z

    move-result p1

    return p1
.end method

.method public setPresetThemesEnabled(Z)V
    .locals 2

    .line 396
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_setPresetThemesEnabled(JZ)V

    return-void
.end method

.method public setUserContext(Lcom/amazon/ksdk/presets/UserContext;)Z
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_setUserContext(JLcom/amazon/ksdk/presets/UserContext;)Z

    move-result p1

    return p1
.end method

.method public setViewContext(Lcom/amazon/ksdk/presets/ViewContext;)Z
    .locals 2

    .line 356
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_setViewContext(JLcom/amazon/ksdk/presets/ViewContext;)Z

    move-result p1

    return p1
.end method

.method public setWeblabContext(Lcom/amazon/ksdk/presets/WeblabContext;)Z
    .locals 2

    .line 324
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_setWeblabContext(JLcom/amazon/ksdk/presets/WeblabContext;)Z

    move-result p1

    return p1
.end method

.method public userContext()Lcom/amazon/ksdk/presets/UserContext;
    .locals 2

    .line 276
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_userContext(J)Lcom/amazon/ksdk/presets/UserContext;

    move-result-object v0

    return-object v0
.end method

.method public validBookContext()Z
    .locals 2

    .line 292
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_validBookContext(J)Z

    move-result v0

    return v0
.end method

.method public validDeviceContext()Z
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_validDeviceContext(J)Z

    move-result v0

    return v0
.end method

.method public validUserContext()Z
    .locals 2

    .line 268
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_validUserContext(J)Z

    move-result v0

    return v0
.end method

.method public validViewContext()Z
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_validViewContext(J)Z

    move-result v0

    return v0
.end method

.method public viewContext()Lcom/amazon/ksdk/presets/ViewContext;
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_viewContext(J)Lcom/amazon/ksdk/presets/ViewContext;

    move-result-object v0

    return-object v0
.end method

.method public weblabContext()Lcom/amazon/ksdk/presets/WeblabContext;
    .locals 2

    .line 316
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_weblabContext(J)Lcom/amazon/ksdk/presets/WeblabContext;

    move-result-object v0

    return-object v0
.end method

.method public writablePathForDevice()Ljava/lang/String;
    .locals 2

    .line 380
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->native_writablePathForDevice(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
