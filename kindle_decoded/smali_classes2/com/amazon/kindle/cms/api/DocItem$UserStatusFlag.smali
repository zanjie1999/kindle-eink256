.class public final enum Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;
.super Ljava/lang/Enum;
.source "DocItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/DocItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserStatusFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

.field public static final enum New:Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "New"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    new-array v1, v1, [Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    aput-object v0, v1, v2

    .line 41
    sput-object v1, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;->m_value:I

    return v0
.end method
