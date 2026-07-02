.class final Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LogUploadStringHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1;->invoke(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;

    invoke-direct {v0}, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;->INSTANCE:Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/log/LogUploadStringHelper$getCollectionsLogContent$collectionString$1$1;->invoke(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
