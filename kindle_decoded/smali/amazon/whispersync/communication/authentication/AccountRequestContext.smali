.class public Lamazon/whispersync/communication/authentication/AccountRequestContext;
.super Ljava/lang/Object;

# interfaces
.implements Lamazon/whispersync/communication/authentication/RequestContext;


# static fields
.field public static final EMPTY_ACCOUNT:Lamazon/whispersync/communication/authentication/AccountRequestContext;


# instance fields
.field private final mDirectedId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lamazon/whispersync/communication/authentication/AccountRequestContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lamazon/whispersync/communication/authentication/AccountRequestContext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/authentication/AccountRequestContext;->EMPTY_ACCOUNT:Lamazon/whispersync/communication/authentication/AccountRequestContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do no use empty constructor, use directedId instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamazon/whispersync/communication/authentication/AccountRequestContext;->mDirectedId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lamazon/whispersync/communication/authentication/AccountRequestContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lamazon/whispersync/communication/authentication/AccountRequestContext;

    iget-object v2, p0, Lamazon/whispersync/communication/authentication/AccountRequestContext;->mDirectedId:Ljava/lang/String;

    iget-object p1, p1, Lamazon/whispersync/communication/authentication/AccountRequestContext;->mDirectedId:Ljava/lang/String;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lamazon/whispersync/communication/authentication/AccountRequestContext;->mDirectedId:Ljava/lang/String;

    return-object v0
.end method
