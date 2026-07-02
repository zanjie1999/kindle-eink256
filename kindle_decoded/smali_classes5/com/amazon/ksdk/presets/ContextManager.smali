.class public abstract Lcom/amazon/ksdk/presets/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/presets/ContextManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Lcom/amazon/ksdk/presets/DeviceContext;Lcom/amazon/ksdk/presets/BookContext;Lcom/amazon/ksdk/presets/ViewContext;)Lcom/amazon/ksdk/presets/ContextManager;
    .locals 0

    .line 170
    invoke-static {p0, p1, p2}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->createInstance(Lcom/amazon/ksdk/presets/DeviceContext;Lcom/amazon/ksdk/presets/BookContext;Lcom/amazon/ksdk/presets/ViewContext;)Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object p0

    return-object p0
.end method

.method public static createInstanceForDevice(Lcom/amazon/ksdk/presets/DeviceType;)Lcom/amazon/ksdk/presets/ContextManager;
    .locals 0

    .line 183
    invoke-static {p0}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->createInstanceForDevice(Lcom/amazon/ksdk/presets/DeviceType;)Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object p0

    return-object p0
.end method

.method public static createInstanceWithUserContext(Lcom/amazon/ksdk/presets/DeviceContext;Lcom/amazon/ksdk/presets/UserContext;Lcom/amazon/ksdk/presets/BookContext;Lcom/amazon/ksdk/presets/ViewContext;)Lcom/amazon/ksdk/presets/ContextManager;
    .locals 0

    .line 156
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->createInstanceWithUserContext(Lcom/amazon/ksdk/presets/DeviceContext;Lcom/amazon/ksdk/presets/UserContext;Lcom/amazon/ksdk/presets/BookContext;Lcom/amazon/ksdk/presets/ViewContext;)Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object p0

    return-object p0
.end method

.method public static deleteInstance()V
    .locals 0

    .line 195
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->deleteInstance()V

    return-void
.end method

.method public static instance()Lcom/amazon/ksdk/presets/ContextManager;
    .locals 1

    .line 189
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    return-object v0
.end method

.method public static setApplicationDirectory(Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-static {p0}, Lcom/amazon/ksdk/presets/ContextManager$CppProxy;->setApplicationDirectory(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lcom/amazon/ksdk/presets/ContextObserver;)V
.end method

.method public abstract bookContext()Lcom/amazon/ksdk/presets/BookContext;
.end method

.method public abstract checkWeblabEnabled(Ljava/lang/String;)Z
.end method

.method public abstract deviceContext()Lcom/amazon/ksdk/presets/DeviceContext;
.end method

.method public abstract presetThemesEnabled()Z
.end method

.method public abstract removeObserver(Lcom/amazon/ksdk/presets/ContextObserver;)V
.end method

.method public abstract removeUserData()V
.end method

.method public abstract setBookContext(Lcom/amazon/ksdk/presets/BookContext;)Z
.end method

.method public abstract setDeviceContext(Lcom/amazon/ksdk/presets/DeviceContext;)Z
.end method

.method public abstract setPresetThemesEnabled(Z)V
.end method

.method public abstract setUserContext(Lcom/amazon/ksdk/presets/UserContext;)Z
.end method

.method public abstract setViewContext(Lcom/amazon/ksdk/presets/ViewContext;)Z
.end method

.method public abstract setWeblabContext(Lcom/amazon/ksdk/presets/WeblabContext;)Z
.end method

.method public abstract userContext()Lcom/amazon/ksdk/presets/UserContext;
.end method

.method public abstract validBookContext()Z
.end method

.method public abstract validDeviceContext()Z
.end method

.method public abstract validUserContext()Z
.end method

.method public abstract validViewContext()Z
.end method

.method public abstract viewContext()Lcom/amazon/ksdk/presets/ViewContext;
.end method

.method public abstract weblabContext()Lcom/amazon/ksdk/presets/WeblabContext;
.end method

.method public abstract writablePathForDevice()Ljava/lang/String;
.end method
