.class Lcom/amazon/kindle/AirAapConfiguration$1;
.super Ljava/lang/Object;
.source "AirAapConfiguration.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/AirAapConfiguration;->onAfterConfiguration(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/audible/mobile/domain/Asin;",
        "Lcom/audible/mobile/domain/ACR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/AirAapConfiguration;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/ACR;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/AirAapConfiguration$1;->invoke(Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    return-object p1
.end method
