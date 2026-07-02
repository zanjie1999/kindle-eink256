.class Lcom/amazon/nwstd/bookmark/BookmarkPopup$1;
.super Ljava/lang/Object;
.source "BookmarkPopup.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/bookmark/BookmarkPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/bookmark/BookmarkPopup;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$1;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$1;->this$0:Lcom/amazon/nwstd/bookmark/BookmarkPopup;

    invoke-virtual {p1}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->refresh()V

    return-void
.end method
