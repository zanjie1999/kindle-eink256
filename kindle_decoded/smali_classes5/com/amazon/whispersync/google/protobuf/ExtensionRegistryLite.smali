.class public Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;

    return-object v0
.end method

.method public static newInstance()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final add(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/amazon/whispersync/google/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findLiteExtensionByNumber(Lcom/amazon/whispersync/google/protobuf/MessageLite;I)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/amazon/whispersync/google/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p1
.end method

.method public getUnmodifiable()Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method
