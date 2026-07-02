.class public final enum Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;
.super Ljava/lang/Enum;
.source "OTASideloadException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/OTASideloadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum Downgrade:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum FileNotFound:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum FileValidationError:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum InvalidFile:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum InvalidSignature:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum LowBatt:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum None:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum NotEnoughDiskSpace:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

.field public static final enum Unknown:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 9
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->None:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 16
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v2, 0x1

    const-string v3, "LowBatt"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->LowBatt:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v3, 0x2

    const-string v4, "NotEnoughDiskSpace"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->NotEnoughDiskSpace:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v4, 0x3

    const-string v5, "FileNotFound"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->FileNotFound:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 33
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v5, 0x4

    const-string v6, "Downgrade"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->Downgrade:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 40
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v6, 0x5

    const-string v7, "InvalidSignature"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->InvalidSignature:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 47
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v7, 0x6

    const-string v8, "InvalidFile"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->InvalidFile:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 54
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/4 v8, 0x7

    const-string v9, "FileValidationError"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->FileValidationError:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 61
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/16 v9, 0x8

    const-string v10, "Unknown"

    const v11, 0x7fffffff

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->Unknown:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    .line 6
    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->None:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->LowBatt:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->NotEnoughDiskSpace:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->FileNotFound:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->Downgrade:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->InvalidSignature:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->InvalidFile:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->FileValidationError:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->mValue:I

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;
    .locals 5

    .line 72
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->values()[Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 74
    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->Unknown:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->mValue:I

    return v0
.end method
