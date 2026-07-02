.class public abstract Lcom/amazon/kndk/initializer/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kndk/initializer/ConfigManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/amazon/kndk/initializer/ConfigManager;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kndk/initializer/ConfigManager$CppProxy;->instance()Lcom/amazon/kndk/initializer/ConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract setCaPath(Ljava/lang/String;)V
.end method

.method public abstract setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHomePath(Ljava/lang/String;)V
.end method
