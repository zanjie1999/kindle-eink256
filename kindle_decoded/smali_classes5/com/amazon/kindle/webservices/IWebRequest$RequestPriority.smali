.class public final enum Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
.super Ljava/lang/Enum;
.source "IWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webservices/IWebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

.field public static final enum BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

.field public static final enum HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

.field public static final enum LOW:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

.field public static final enum MEDIUM:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

.field public static final enum URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;


# instance fields
.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    new-instance v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    const/4 v1, 0x0

    const-string v2, "BLOCKING"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 43
    new-instance v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    const/4 v2, 0x1

    const-string v3, "URGENT"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 44
    new-instance v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    const/16 v5, 0xa

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 45
    new-instance v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    const/4 v4, 0x3

    const-string v5, "MEDIUM"

    const/16 v6, 0x14

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->MEDIUM:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 46
    new-instance v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    const/4 v5, 0x4

    const-string v6, "LOW"

    const/16 v7, 0x32

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->LOW:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    .line 41
    sget-object v7, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->MEDIUM:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->$VALUES:[Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->$VALUES:[Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {v0}, [Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->priority:I

    return v0
.end method
