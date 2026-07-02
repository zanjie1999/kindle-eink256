.class public final enum Lcom/amazon/kindle/cms/api/Callback$Result;
.super Ljava/lang/Enum;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/Callback$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/Callback$Result;

.field public static final enum Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

.field public static final enum NotImplemented:Lcom/amazon/kindle/cms/api/Callback$Result;

.field public static final enum Success:Lcom/amazon/kindle/cms/api/Callback$Result;


# instance fields
.field private final m_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/amazon/kindle/cms/api/Callback$Result;

    const/4 v1, 0x0

    const-string v2, "Success"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/cms/api/Callback$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 18
    new-instance v0, Lcom/amazon/kindle/cms/api/Callback$Result;

    const/4 v2, 0x1

    const-string v3, "Failure"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/cms/api/Callback$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 19
    new-instance v0, Lcom/amazon/kindle/cms/api/Callback$Result;

    const/4 v3, 0x2

    const-string v4, "NotImplemented"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kindle/cms/api/Callback$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/Callback$Result;->NotImplemented:Lcom/amazon/kindle/cms/api/Callback$Result;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/cms/api/Callback$Result;

    .line 15
    sget-object v5, Lcom/amazon/kindle/cms/api/Callback$Result;->Success:Lcom/amazon/kindle/cms/api/Callback$Result;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/cms/api/Callback$Result;->Failure:Lcom/amazon/kindle/cms/api/Callback$Result;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/cms/api/Callback$Result;->$VALUES:[Lcom/amazon/kindle/cms/api/Callback$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/amazon/kindle/cms/api/Callback$Result;->m_code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/cms/api/Callback$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/Callback$Result;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/cms/api/Callback$Result;->$VALUES:[Lcom/amazon/kindle/cms/api/Callback$Result;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/Callback$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/Callback$Result;

    return-object v0
.end method


# virtual methods
.method getCode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/amazon/kindle/cms/api/Callback$Result;->m_code:I

    return v0
.end method
