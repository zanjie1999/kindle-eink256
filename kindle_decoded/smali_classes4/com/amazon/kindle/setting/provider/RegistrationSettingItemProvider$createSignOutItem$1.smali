.class public final Lcom/amazon/kindle/setting/provider/RegistrationSettingItemProvider$createSignOutItem$1;
.super Ljava/lang/Object;
.source "RegistrationHandlerSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/RegistrationSettingItemProvider;->createSignOutItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/DeregisterHandler;->deregisterDevice()V

    return-void
.end method
