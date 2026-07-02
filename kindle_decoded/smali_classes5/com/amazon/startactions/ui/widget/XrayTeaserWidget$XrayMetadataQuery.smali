.class public Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XrayMetadataQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;
    .locals 6

    .line 625
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    .line 626
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 625
    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 632
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v1

    .line 633
    new-instance v2, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/BookMetadata;->getNumPeople()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/BookMetadata;->getNumTerms()I

    move-result v4

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/BookMetadata;->getNumImages()I

    move-result v5

    .line 634
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/BookMetadata;->getPreviewImages()[I

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;-><init>(III[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    .line 637
    throw v1
.end method
