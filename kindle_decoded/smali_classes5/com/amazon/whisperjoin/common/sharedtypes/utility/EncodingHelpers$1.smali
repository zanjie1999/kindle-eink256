.class Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$1;
.super Ljava/lang/Object;
.source "EncodingHelpers.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$CommandInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;->decodeCommand([B)Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$CommandInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$payload:[B


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;Ljava/lang/String;[B)V
    .locals 0

    .line 72
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$1;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$1;->val$payload:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$1;->val$command:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers$1;->val$payload:[B

    return-object v0
.end method
