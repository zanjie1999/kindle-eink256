.class public final enum Lcom/amazon/kindle/collections/CollectionItemField;
.super Ljava/lang/Enum;
.source "CollectionItemField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/collections/CollectionItemField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/collections/CollectionItemField;

.field public static ALL_FIELDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/collections/CollectionItemField;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

.field public static final enum KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

.field public static final enum SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

.field public static final enum SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/amazon/kindle/collections/CollectionItemField;

    const/4 v1, 0x0

    const-string v2, "KINDLE_ID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/collections/CollectionItemField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 9
    new-instance v0, Lcom/amazon/kindle/collections/CollectionItemField;

    const/4 v2, 0x1

    const-string v3, "SYNC_ID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/collections/CollectionItemField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 10
    new-instance v0, Lcom/amazon/kindle/collections/CollectionItemField;

    const/4 v3, 0x2

    const-string v4, "COLLECTION_ID"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/collections/CollectionItemField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 11
    new-instance v0, Lcom/amazon/kindle/collections/CollectionItemField;

    const/4 v4, 0x3

    const-string v5, "SORT_ORDER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/collections/CollectionItemField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/collections/CollectionItemField;

    .line 7
    sget-object v6, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/collections/CollectionItemField;->$VALUES:[Lcom/amazon/kindle/collections/CollectionItemField;

    .line 13
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionItemField;->values()[Lcom/amazon/kindle/collections/CollectionItemField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->ALL_FIELDS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/collections/CollectionItemField;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/collections/CollectionItemField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/collections/CollectionItemField;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->$VALUES:[Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/collections/CollectionItemField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/collections/CollectionItemField;

    return-object v0
.end method
