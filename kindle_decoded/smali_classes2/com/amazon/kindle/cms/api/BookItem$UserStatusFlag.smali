.class public final enum Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;
.super Ljava/lang/Enum;
.source "BookItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/BookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserStatusFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

.field public static final enum New:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

.field public static final enum OwnsCompanionAudioBook:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "New"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    .line 56
    new-instance v0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    const-string v3, "OwnsCompanionAudioBook"

    const/16 v4, 0x20

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->OwnsCompanionAudioBook:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    .line 51
    sget-object v4, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->m_value:I

    return v0
.end method
