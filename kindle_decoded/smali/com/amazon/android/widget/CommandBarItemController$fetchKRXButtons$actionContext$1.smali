.class public final Lcom/amazon/android/widget/CommandBarItemController$fetchKRXButtons$actionContext$1;
.super Lcom/amazon/kindle/krx/reader/BaseReaderBookActionContext;
.source "CommandBarItemController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/CommandBarItemController;->fetchKRXButtons(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController$fetchKRXButtons$actionContext$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/android/widget/CommandBarItemController$fetchKRXButtons$actionContext$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseReaderBookActionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController$fetchKRXButtons$actionContext$1;->$context:Landroid/content/Context;

    return-object v0
.end method

.method public getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController$fetchKRXButtons$actionContext$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method
