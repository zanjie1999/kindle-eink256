.class public final enum Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;
.super Ljava/lang/Enum;
.source "ContentUpdateField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

.field public static final enum ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

.field public static final enum REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

.field public static final enum START_TIME:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

.field public static final enum TODO_ITEM:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

.field public static final enum USERID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    const/4 v1, 0x0

    const-string v2, "ID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 11
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    const/4 v2, 0x1

    const-string v3, "USERID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->USERID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 12
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    const/4 v3, 0x2

    const-string v4, "REQUEST_ID"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 13
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    const/4 v4, 0x3

    const-string v5, "TODO_ITEM"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->TODO_ITEM:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 14
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    const/4 v5, 0x4

    const-string v6, "START_TIME"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->START_TIME:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 9
    sget-object v7, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->USERID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->TODO_ITEM:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->$VALUES:[Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->$VALUES:[Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    return-object v0
.end method
