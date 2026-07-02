.class public final Lcom/amazon/kindle/krx/content/BookGroupImpl;
.super Ljava/lang/Object;
.source "BookGroupImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/BookGroup;


# instance fields
.field private final _groupId:Ljava/lang/String;

.field private final _groupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/BookGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private final _title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "_groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/BookGroupImpl;->_groupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/BookGroupImpl;->_title:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/BookGroupImpl;->_groupItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addItem(Lcom/amazon/kindle/krx/content/BookGroupItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookGroupImpl;->_groupItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookGroupImpl;->_groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/BookGroupItem;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookGroupImpl;->_groupItems:Ljava/util/List;

    return-object v0
.end method

.method public getGroupTitle()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/BookGroupImpl;->_title:Ljava/lang/String;

    return-object v0
.end method
