.class public final enum Lcom/amazon/kindle/collections/CollectionField;
.super Ljava/lang/Enum;
.source "CollectionField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/collections/CollectionField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/collections/CollectionField;

.field public static final enum ID:Lcom/amazon/kindle/collections/CollectionField;

.field public static final enum IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

.field public static final enum LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

.field public static final enum SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

.field public static final enum TITLE:Lcom/amazon/kindle/collections/CollectionField;

.field public static final enum TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

.field public static final enum USER_ID:Lcom/amazon/kindle/collections/CollectionField;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Lcom/amazon/kindle/collections/CollectionField;

    const/4 v1, 0x0

    const-string v2, "ID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/collections/CollectionField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 9
    new-instance v0, Lcom/amazon/kindle/collections/CollectionField;

    const/4 v2, 0x1

    const-string v3, "USER_ID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/collections/CollectionField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 10
    new-instance v0, Lcom/amazon/kindle/collections/CollectionField;

    const/4 v3, 0x2

    const-string v4, "TITLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/collections/CollectionField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 11
    new-instance v0, Lcom/amazon/kindle/collections/CollectionField;

    const/4 v4, 0x3

    const-string v5, "SORTABLE_TITLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/collections/CollectionField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 12
    new-instance v0, Lcom/amazon/kindle/collections/CollectionField;

    const/4 v5, 0x4

    const-string v6, "TITLE_PRONUNCIATION"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/collections/CollectionField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    .line 13
    new-instance v0, Lcom/amazon/kindle/collections/CollectionField;

    const/4 v6, 0x5

    const-string v7, "LANGUAGE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/collections/CollectionField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    .line 14
    new-instance v0, Lcom/amazon/kindle/collections/CollectionField;

    const/4 v7, 0x6

    const-string v8, "IMPORT_FLAG"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/collections/CollectionField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/collections/CollectionField;

    .line 7
    sget-object v9, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/collections/CollectionField;->$VALUES:[Lcom/amazon/kindle/collections/CollectionField;

    .line 16
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionField;->values()[Lcom/amazon/kindle/collections/CollectionField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/collections/CollectionField;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/collections/CollectionField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/collections/CollectionField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/collections/CollectionField;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/collections/CollectionField;->$VALUES:[Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/collections/CollectionField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/collections/CollectionField;

    return-object v0
.end method
