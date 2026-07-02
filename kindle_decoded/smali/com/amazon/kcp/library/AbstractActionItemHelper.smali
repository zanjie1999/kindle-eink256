.class public abstract Lcom/amazon/kcp/library/AbstractActionItemHelper;
.super Ljava/lang/Object;
.source "AbstractActionItemHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onSelected(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lcom/amazon/kcp/library/LibraryDialogFragment;"
        }
    .end annotation
.end method
