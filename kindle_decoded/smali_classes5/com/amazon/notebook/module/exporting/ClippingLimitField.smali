.class public final enum Lcom/amazon/notebook/module/exporting/ClippingLimitField;
.super Ljava/lang/Enum;
.source "ClippingLimitField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/exporting/ClippingLimitField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/exporting/ClippingLimitField;

.field public static final ALL_FIELDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/notebook/module/exporting/ClippingLimitField;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BOOKID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

.field public static final enum EXPORTED:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

.field public static final enum USERID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    const/4 v1, 0x0

    const-string v2, "USERID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/notebook/module/exporting/ClippingLimitField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->USERID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 21
    new-instance v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    const/4 v2, 0x1

    const-string v3, "BOOKID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/notebook/module/exporting/ClippingLimitField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->BOOKID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 22
    new-instance v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    const/4 v3, 0x2

    const-string v4, "EXPORTED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/notebook/module/exporting/ClippingLimitField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->EXPORTED:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 9
    sget-object v5, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->USERID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->BOOKID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->$VALUES:[Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 28
    invoke-static {}, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->values()[Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->ALL_FIELDS:Ljava/util/Collection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/exporting/ClippingLimitField;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/exporting/ClippingLimitField;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->$VALUES:[Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/exporting/ClippingLimitField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    return-object v0
.end method
