.class public final Lcom/amazon/kindle/deletecontent/dialog/DeleteFromLibraryDialogModelKt;
.super Ljava/lang/Object;
.source "DeleteFromLibraryDialogModel.kt"


# direct methods
.method public static final toDeleteContentAsinDetail(Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;)Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;
    .locals 3

    const-string v0, "$this$toDeleteContentAsinDetail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiUtilsKt;->convertContentTypeToCategory(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getParentAsin()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
