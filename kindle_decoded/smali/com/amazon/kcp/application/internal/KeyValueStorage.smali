.class public Lcom/amazon/kcp/application/internal/KeyValueStorage;
.super Ljava/lang/Object;
.source "KeyValueStorage.java"


# static fields
.field private static final instance:Lcom/amazon/kcp/application/internal/KeyValueStorage;


# instance fields
.field private keyValue:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kcp/application/internal/KeyValueStorage;

    invoke-direct {v0}, Lcom/amazon/kcp/application/internal/KeyValueStorage;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->instance:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/internal/KeyValueStorage;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->instance:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    return-object v0
.end method


# virtual methods
.method public setDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
