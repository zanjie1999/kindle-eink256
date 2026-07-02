.class public final Lcom/amazon/kcp/home/models/voltron/LayoutBlock;
.super Lcom/amazon/kcp/home/models/voltron/VoltronBlock;
.source "VoltronModels.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kcp/home/models/voltron/VoltronBlock;"
    }
.end annotation


# instance fields
.field private final contents:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public final getContents()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/LayoutBlock;->contents:Ljava/lang/Object;

    return-object v0
.end method
