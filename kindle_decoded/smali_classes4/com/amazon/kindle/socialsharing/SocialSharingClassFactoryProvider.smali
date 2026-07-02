.class public final enum Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;
.super Ljava/lang/Enum;
.source "SocialSharingClassFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider$ClassFactoryAlreadyInitializedException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

.field public static final enum INSTANCE:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;


# instance fields
.field private socialSharingClassFactory:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->INSTANCE:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    aput-object v0, v2, v1

    .line 17
    sput-object v2, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->$VALUES:[Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->$VALUES:[Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    invoke-virtual {v0}, [Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;

    return-object v0
.end method


# virtual methods
.method public getFactory()Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->socialSharingClassFactory:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Attempting to get the class factory before it was initialized"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->socialSharingClassFactory:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;

    return-object v0
.end method

.method public declared-synchronized initializeClassFactory(Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider$ClassFactoryAlreadyInitializedException;
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->socialSharingClassFactory:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "socialSharingClassFactory cannot be null"

    .line 39
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider;->socialSharingClassFactory:Lcom/amazon/kindle/socialsharing/SocialSharingClassFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 37
    :cond_1
    :try_start_1
    new-instance p1, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider$ClassFactoryAlreadyInitializedException;

    invoke-direct {p1}, Lcom/amazon/kindle/socialsharing/SocialSharingClassFactoryProvider$ClassFactoryAlreadyInitializedException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
