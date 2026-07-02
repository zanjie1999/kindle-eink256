.class public final Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;
.super Landroid/os/AsyncTask;
.source "RecentBookAppShortcut.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/RecentBookAppShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateBookDetailsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/amazon/kindle/content/ContentMetadata;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/RecentBookAppShortcut;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/RecentBookAppShortcut;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "books"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-static {v1}, Lcom/amazon/kindle/RecentBookAppShortcut;->access$getCoverImageService$p(Lcom/amazon/kindle/RecentBookAppShortcut;)Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    const-string v3, "book.bookID"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/cover/ICoverImageService;->getSmallCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/RecentBookAppShortcut;->access$setIcon$p(Lcom/amazon/kindle/RecentBookAppShortcut;Landroid/graphics/drawable/Icon;)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/RecentBookAppShortcut;->access$setShortLabel$p(Lcom/amazon/kindle/RecentBookAppShortcut;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 107
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/amazon/kindle/RecentBookAppShortcut;->access$setIcon$p(Lcom/amazon/kindle/RecentBookAppShortcut;Landroid/graphics/drawable/Icon;)V

    .line 112
    iget-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-static {p1, v1}, Lcom/amazon/kindle/RecentBookAppShortcut;->access$setShortLabel$p(Lcom/amazon/kindle/RecentBookAppShortcut;Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, [Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->doInBackground([Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->onPostExecute(Z)V

    return-void
.end method

.method protected onPostExecute(Z)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-static {v0, p1}, Lcom/amazon/kindle/RecentBookAppShortcut;->access$setEnabled$p(Lcom/amazon/kindle/RecentBookAppShortcut;Z)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-static {p1}, Lcom/amazon/kindle/RecentBookAppShortcut;->access$getMessageQueue$p(Lcom/amazon/kindle/RecentBookAppShortcut;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/krx/events/AppShortcutChangedEvent;

    iget-object v1, p0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;->this$0:Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-virtual {v1}, Lcom/amazon/kindle/RecentBookAppShortcut;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/events/AppShortcutChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
