.class final Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LogUploadStringHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/log/LogUploadStringHelper;->getCollectionsLogContent()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;

    invoke-direct {v0}, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;->INSTANCE:Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/lang/CharSequence;
    .locals 12

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    .line 60
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "it.id"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->getSortedCollectionItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sget-object v9, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;->INSTANCE:Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x1f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;->invoke(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
