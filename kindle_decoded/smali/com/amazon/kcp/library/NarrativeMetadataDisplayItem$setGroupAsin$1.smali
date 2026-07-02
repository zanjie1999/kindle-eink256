.class final Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NarrativeMetadataDisplayItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->setGroupAsin(Lcom/amazon/kindle/model/content/IBookID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/model/content/IBookID;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;->INSTANCE:Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;->invoke(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "groupId?.asin ?: return \"\""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "-"

    .line 78
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method
