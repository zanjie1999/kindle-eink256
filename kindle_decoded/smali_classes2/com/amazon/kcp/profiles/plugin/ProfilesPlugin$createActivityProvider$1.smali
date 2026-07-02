.class final Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin$createActivityProvider$1;
.super Ljava/lang/Object;
.source "ProfilesPlugin.kt"

# interfaces
.implements Lcom/amazon/kcp/library/ActivityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin;->createActivityProvider(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/library/ActivityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin$createActivityProvider$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/profiles/plugin/ProfilesPlugin$createActivityProvider$1;->$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
