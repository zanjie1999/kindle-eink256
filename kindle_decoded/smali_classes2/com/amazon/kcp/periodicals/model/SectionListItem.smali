.class public Lcom/amazon/kcp/periodicals/model/SectionListItem;
.super Ljava/lang/Object;
.source "SectionListItem.java"


# instance fields
.field private mTOCItem:Lcom/amazon/nwstd/toc/ISectionTOCItem;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/toc/ISectionTOCItem;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/model/SectionListItem;->mTOCItem:Lcom/amazon/nwstd/toc/ISectionTOCItem;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/model/SectionListItem;->mTOCItem:Lcom/amazon/nwstd/toc/ISectionTOCItem;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/model/SectionListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
