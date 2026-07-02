.class public abstract Lcom/amazon/ksdk/presets/ContextFactory;
.super Ljava/lang/Object;
.source "ContextFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultBookContext()Lcom/amazon/ksdk/presets/BookContext;
    .locals 1

    .line 14
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->defaultBookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    return-object v0
.end method

.method public static defaultDeviceContext()Lcom/amazon/ksdk/presets/DeviceContext;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->defaultDeviceContext()Lcom/amazon/ksdk/presets/DeviceContext;

    move-result-object v0

    return-object v0
.end method

.method public static defaultUserContext()Lcom/amazon/ksdk/presets/UserContext;
    .locals 1

    .line 24
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->defaultUserContext()Lcom/amazon/ksdk/presets/UserContext;

    move-result-object v0

    return-object v0
.end method

.method public static defaultViewContext()Lcom/amazon/ksdk/presets/ViewContext;
    .locals 1

    .line 29
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->defaultViewContext()Lcom/amazon/ksdk/presets/ViewContext;

    move-result-object v0

    return-object v0
.end method

.method public static invalidBookContext()Lcom/amazon/ksdk/presets/BookContext;
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->invalidBookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    return-object v0
.end method

.method public static invalidDeviceContext()Lcom/amazon/ksdk/presets/DeviceContext;
    .locals 1

    .line 39
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->invalidDeviceContext()Lcom/amazon/ksdk/presets/DeviceContext;

    move-result-object v0

    return-object v0
.end method

.method public static invalidUserContext()Lcom/amazon/ksdk/presets/UserContext;
    .locals 1

    .line 44
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->invalidUserContext()Lcom/amazon/ksdk/presets/UserContext;

    move-result-object v0

    return-object v0
.end method

.method public static invalidViewContext()Lcom/amazon/ksdk/presets/ViewContext;
    .locals 1

    .line 49
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextFactory$CppProxy;->invalidViewContext()Lcom/amazon/ksdk/presets/ViewContext;

    move-result-object v0

    return-object v0
.end method
