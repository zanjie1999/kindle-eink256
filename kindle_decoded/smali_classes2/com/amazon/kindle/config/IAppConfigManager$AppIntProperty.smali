.class public final enum Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;
.super Ljava/lang/Enum;
.source "IAppConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/config/IAppConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppIntProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;

    .line 23
    sput-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;->$VALUES:[Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;->$VALUES:[Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;

    invoke-virtual {v0}, [Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/config/IAppConfigManager$AppIntProperty;

    return-object v0
.end method
