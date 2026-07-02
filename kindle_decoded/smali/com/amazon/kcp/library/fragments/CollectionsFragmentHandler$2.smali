.class synthetic Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$2;
.super Ljava/lang/Object;
.source "CollectionsFragmentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 223
    invoke-static {}, Lcom/amazon/kindle/krx/collections/CollectionFilter;->values()[Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$2;->$SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->EBOOK:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$2;->$SwitchMap$com$amazon$kindle$krx$collections$CollectionFilter:[I

    sget-object v1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->PERIODICAL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
