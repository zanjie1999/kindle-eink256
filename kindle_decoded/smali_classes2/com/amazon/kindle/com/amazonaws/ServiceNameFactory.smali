.class final enum Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;
.super Ljava/lang/Enum;
.source "ServiceNameFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;

    .line 24
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;

    return-void
.end method

.method static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig$Factory;->getInternalConfig()Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/com/amazonaws/internal/config/InternalConfig;->getHttpClientConfig(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/internal/config/HttpClientConfig;->getServiceName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/ServiceNameFactory;

    return-object v0
.end method
