.class Lcom/amazon/kcp/debug/DebugActivity$35;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onDownloadAllBooks(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;)V
    .locals 0

    .line 1889
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$35;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 1892
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
