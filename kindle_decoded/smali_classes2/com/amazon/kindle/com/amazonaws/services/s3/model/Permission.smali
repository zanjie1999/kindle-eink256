.class public final enum Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;
.super Ljava/lang/Enum;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

.field public static final enum FullControl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

.field public static final enum Read:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

.field public static final enum ReadAcp:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

.field public static final enum Write:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

.field public static final enum WriteAcp:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;


# instance fields
.field private headerName:Ljava/lang/String;

.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    const/4 v1, 0x0

    const-string v2, "FullControl"

    const-string v3, "FULL_CONTROL"

    const-string/jumbo v4, "x-amz-grant-full-control"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->FullControl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    .line 38
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    const/4 v2, 0x1

    const-string v3, "Read"

    const-string v4, "READ"

    const-string/jumbo v5, "x-amz-grant-read"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->Read:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    .line 47
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    const/4 v3, 0x2

    const-string v4, "Write"

    const-string v5, "WRITE"

    const-string/jumbo v6, "x-amz-grant-write"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->Write:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    .line 55
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    const/4 v4, 0x3

    const-string v5, "ReadAcp"

    const-string v6, "READ_ACP"

    const-string/jumbo v7, "x-amz-grant-read-acp"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->ReadAcp:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    .line 69
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    const/4 v5, 0x4

    const-string v6, "WriteAcp"

    const-string v7, "WRITE_ACP"

    const-string/jumbo v8, "x-amz-grant-write-acp"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->WriteAcp:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    .line 23
    sget-object v7, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->FullControl:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->Read:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->Write:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->ReadAcp:Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->headerName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;

    return-object v0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    return-object v0
.end method
