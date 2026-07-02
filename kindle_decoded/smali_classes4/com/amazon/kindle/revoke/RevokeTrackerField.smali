.class public final enum Lcom/amazon/kindle/revoke/RevokeTrackerField;
.super Ljava/lang/Enum;
.source "RevokeTrackerField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/revoke/RevokeTrackerField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/revoke/RevokeTrackerField;

.field public static final ALL_FIELDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/revoke/RevokeTrackerField;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ASIN:Lcom/amazon/kindle/revoke/RevokeTrackerField;

.field public static final enum BOOK_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

.field public static final enum FAILURE_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

.field public static final enum RETRY_COUNT:Lcom/amazon/kindle/revoke/RevokeTrackerField;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;

    const/4 v1, 0x0

    const-string v2, "ASIN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/revoke/RevokeTrackerField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->ASIN:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    .line 30
    new-instance v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;

    const/4 v2, 0x1

    const-string v3, "BOOK_TYPE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/revoke/RevokeTrackerField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->BOOK_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    .line 35
    new-instance v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;

    const/4 v3, 0x2

    const-string v4, "FAILURE_TYPE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/revoke/RevokeTrackerField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->FAILURE_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    .line 40
    new-instance v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;

    const/4 v4, 0x3

    const-string v5, "RETRY_COUNT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/revoke/RevokeTrackerField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->RETRY_COUNT:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/revoke/RevokeTrackerField;

    .line 21
    sget-object v6, Lcom/amazon/kindle/revoke/RevokeTrackerField;->ASIN:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/revoke/RevokeTrackerField;->BOOK_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/revoke/RevokeTrackerField;->FAILURE_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/revoke/RevokeTrackerField;->$VALUES:[Lcom/amazon/kindle/revoke/RevokeTrackerField;

    .line 42
    invoke-static {}, Lcom/amazon/kindle/revoke/RevokeTrackerField;->values()[Lcom/amazon/kindle/revoke/RevokeTrackerField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->ALL_FIELDS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getAllFieldNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {}, Lcom/amazon/kindle/revoke/RevokeTrackerField;->values()[Lcom/amazon/kindle/revoke/RevokeTrackerField;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 48
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAllFieldsAsArray()[Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {}, Lcom/amazon/kindle/revoke/RevokeTrackerField;->getAllFieldNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/revoke/RevokeTrackerField;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/revoke/RevokeTrackerField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/revoke/RevokeTrackerField;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->$VALUES:[Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/revoke/RevokeTrackerField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/revoke/RevokeTrackerField;

    return-object v0
.end method
