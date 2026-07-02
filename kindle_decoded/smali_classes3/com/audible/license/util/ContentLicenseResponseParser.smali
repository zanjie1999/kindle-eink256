.class public final Lcom/audible/license/util/ContentLicenseResponseParser;
.super Ljava/lang/Object;
.source "ContentLicenseResponseParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentLicenseResponseParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentLicenseResponseParser.kt\ncom/audible/license/util/ContentLicenseResponseParser\n*L\n1#1,102:1\n*E\n"
.end annotation


# instance fields
.field private final voucherCipher:Lcom/audible/license/repository/file/VoucherCipher;

.field private final voucherParser:Lcom/audible/license/repository/file/VoucherParser;

.field private final voucherRulesValidator:Lcom/audible/license/rules/VoucherRulesValidator;


# direct methods
.method public constructor <init>(Lcom/audible/license/repository/file/VoucherCipher;Lcom/audible/license/repository/file/VoucherParser;Lcom/audible/license/rules/VoucherRulesValidator;)V
    .locals 1

    const-string v0, "voucherCipher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherParser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherRulesValidator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/util/ContentLicenseResponseParser;->voucherCipher:Lcom/audible/license/repository/file/VoucherCipher;

    iput-object p2, p0, Lcom/audible/license/util/ContentLicenseResponseParser;->voucherParser:Lcom/audible/license/repository/file/VoucherParser;

    iput-object p3, p0, Lcom/audible/license/util/ContentLicenseResponseParser;->voucherRulesValidator:Lcom/audible/license/rules/VoucherRulesValidator;

    return-void
.end method


# virtual methods
.method public final parse$audible_android_cdn_release(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;Lcom/audible/mobile/domain/CustomerId;)Lkotlin/Triple;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
            "Lcom/audible/mobile/domain/CustomerId;",
            ")",
            "Lkotlin/Triple<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            "Lcom/audible/license/model/EncryptedVoucher;",
            "Lcom/audible/license/model/ExtraContentLicenseInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const-string v1, "contentLicense"

    move-object/from16 v11, p1

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "customerId"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getLicense()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getLicenseId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 45
    invoke-virtual {v13}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentReference()Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v1, "contentMetadata.contentR\u2026exception: asin is null\")"

    .line 46
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v13}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentReference()Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->getAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object v14

    if-eqz v14, :cond_7

    const-string v1, "contentMetadata.contentR\u2026 exception: acr is null\")"

    .line 49
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v13}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentReference()Lcom/audible/mobile/contentlicense/networking/model/ContentReference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/audible/mobile/contentlicense/networking/model/ContentReference;->getCodec()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    const-string v1, "contentMetadata.contentR\u2026xception: codec is null\")"

    .line 52
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v13}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getContentUrl()Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/audible/mobile/contentlicense/networking/model/ContentUrl;->getUrl()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v1, "contentMetadata.contentU\u2026ion: contentUrl is null\")"

    .line 55
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v1, v0, Lcom/audible/license/util/ContentLicenseResponseParser;->voucherCipher:Lcom/audible/license/repository/file/VoucherCipher;

    .line 59
    invoke-interface {v8}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asin.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 60
    invoke-static {v12, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "Base64.decode(license, Base64.DEFAULT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v2, v3, v7}, Lcom/audible/license/repository/file/VoucherCipher;->decryptVoucher(Ljava/lang/String;[BLcom/audible/mobile/domain/CustomerId;)[B

    move-result-object v1

    .line 63
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 64
    iget-object v1, v0, Lcom/audible/license/util/ContentLicenseResponseParser;->voucherParser:Lcom/audible/license/repository/file/VoucherParser;

    invoke-virtual {v1, v3}, Lcom/audible/license/repository/file/VoucherParser;->parseVoucher(Ljava/lang/String;)Lcom/audible/license/model/Voucher;

    move-result-object v16

    .line 65
    iget-object v1, v0, Lcom/audible/license/util/ContentLicenseResponseParser;->voucherRulesValidator:Lcom/audible/license/rules/VoucherRulesValidator;

    .line 66
    invoke-virtual/range {v16 .. v16}, Lcom/audible/license/model/Voucher;->getRules()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/16 v17, 0x0

    move-object/from16 v4, p2

    const/16 v18, 0x0

    move-object/from16 v6, v17

    .line 65
    invoke-static/range {v1 .. v6}, Lcom/audible/license/rules/VoucherRulesValidator;->validateRules$default(Lcom/audible/license/rules/VoucherRulesValidator;Ljava/util/List;Ljava/util/Date;Lcom/audible/mobile/domain/CustomerId;ILjava/lang/Object;)Lcom/audible/license/rules/ValidationResult;

    move-result-object v1

    .line 71
    invoke-virtual/range {v16 .. v16}, Lcom/audible/license/model/Voucher;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v16, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/license/rules/VoucherRule;

    .line 72
    instance-of v4, v3, Lcom/audible/license/rules/AllowedUsersRule;

    if-eqz v4, :cond_0

    .line 76
    check-cast v3, Lcom/audible/license/rules/AllowedUsersRule;

    invoke-virtual {v3}, Lcom/audible/license/rules/AllowedUsersRule;->getAllowedDirectedIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move/from16 v16, v6

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getDrmType()Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/audible/mobile/contentlicense/networking/request/DrmType;->ADRM:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    :goto_2
    move-object/from16 v17, v2

    .line 82
    new-instance v5, Lcom/audible/license/repository/db/VoucherMetadata;

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getRefreshDate()Ljava/util/Date;

    move-result-object v19

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getRemovalDate()Ljava/util/Date;

    move-result-object v20

    .line 88
    sget-object v2, Lcom/audible/license/rules/ValidationResult;->Success:Lcom/audible/license/rules/ValidationResult;

    if-ne v1, v2, :cond_4

    const/16 v18, 0x1

    :cond_4
    move-object v1, v5

    move-object v2, v8

    move-object v3, v14

    move-object/from16 v4, p2

    move-object v8, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object v0, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v16

    .line 82
    invoke-direct/range {v1 .. v10}, Lcom/audible/license/repository/db/VoucherMetadata;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;)V

    .line 94
    new-instance v1, Lcom/audible/license/model/DownloadMetadata;

    invoke-virtual/range {p1 .. p1}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->getPdfUrl()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    move-object/from16 v3, v18

    move-object v4, v15

    move-object v6, v14

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/audible/license/model/DownloadMetadata;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/contentlicense/networking/request/DrmType;)V

    .line 96
    new-instance v2, Lkotlin/Triple;

    .line 98
    new-instance v3, Lcom/audible/license/model/EncryptedVoucher;

    invoke-direct {v3, v12}, Lcom/audible/license/model/EncryptedVoucher;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v4, Lcom/audible/license/model/ExtraContentLicenseInfo;

    invoke-virtual {v13}, Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;->getChapterInfo()Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/audible/license/model/ExtraContentLicenseInfo;-><init>(Lcom/audible/license/model/DownloadMetadata;Lcom/audible/mobile/contentlicense/networking/model/ChapterInfo;)V

    .line 96
    invoke-direct {v2, v0, v3, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 55
    :cond_5
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v1, "ACLS response exception: contentUrl is null"

    invoke-direct {v0, v1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_6
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v1, "ACLS response exception: codec is null"

    invoke-direct {v0, v1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_7
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v1, "ACLS response exception: acr is null"

    invoke-direct {v0, v1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_8
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v1, "ACLS response exception: asin is null"

    invoke-direct {v0, v1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_9
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v1, "ACLS response exception: contentMetadata is null"

    invoke-direct {v0, v1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_a
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v1, "ACLS response exception: licenseId is null"

    invoke-direct {v0, v1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_b
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    const-string v1, "ACLS response exception: license is null"

    invoke-direct {v0, v1}, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
