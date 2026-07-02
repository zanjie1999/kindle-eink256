.class public final Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;
.super Ljava/lang/Object;
.source "IGoodreadsMarManager.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->title:Ljava/lang/String;

    return-object v0
.end method
