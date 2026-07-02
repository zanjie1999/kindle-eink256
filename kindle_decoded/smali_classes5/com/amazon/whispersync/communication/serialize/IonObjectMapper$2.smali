.class Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$2;
.super Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;
.source "IonObjectMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;->deserialize(Ljava/io/InputStream;Lamazon/whispersync/communication/serialize/TypeReference;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;

.field final synthetic val$valueTypeRef:Lamazon/whispersync/communication/serialize/TypeReference;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;Lamazon/whispersync/communication/serialize/TypeReference;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$2;->this$0:Lcom/amazon/whispersync/communication/serialize/IonObjectMapper;

    iput-object p2, p0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$2;->val$valueTypeRef:Lamazon/whispersync/communication/serialize/TypeReference;

    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/communication/serialize/IonObjectMapper$2;->val$valueTypeRef:Lamazon/whispersync/communication/serialize/TypeReference;

    invoke-virtual {v0}, Lamazon/whispersync/communication/serialize/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
