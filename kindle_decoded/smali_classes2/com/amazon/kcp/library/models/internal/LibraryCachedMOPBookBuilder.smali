.class public final Lcom/amazon/kcp/library/models/internal/LibraryCachedMOPBookBuilder;
.super Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;
.source "LibraryCachedMOPBookBuilder.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;)V

    return-void
.end method


# virtual methods
.method protected getBookItem(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)Lcom/amazon/kcp/library/models/internal/KRFBookItem;
    .locals 14

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getDocFactory()Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    .line 28
    new-instance v13, Lcom/amazon/kcp/library/models/internal/MOPBookItem;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kcp/library/models/internal/MOPBookItem;-><init>(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    return-object v13
.end method
