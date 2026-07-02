.class public final Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;
.super Ljava/lang/Object;
.source "GoodreadsMarManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->Companion:Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;->newInstance(Landroid/content/Context;)Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    move-result-object p1

    new-instance v2, Lcom/amazon/kindle/krx/application/AlertDialogManager;

    invoke-direct {v2}, Lcom/amazon/kindle/krx/application/AlertDialogManager;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;Lcom/amazon/kindle/krx/application/AlertDialogManager;)V

    return-object v0
.end method
