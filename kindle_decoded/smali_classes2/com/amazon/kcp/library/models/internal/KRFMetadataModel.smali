.class public Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;
.super Ljava/lang/Object;
.source "KRFMetadataModel.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    return-void
.end method


# virtual methods
.method public getStringValueFromMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;->bookInfo:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/models/internal/KRFMetadataModel;->TAG:Ljava/lang/String;

    const-string v0, "Book-info should never be null here"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
