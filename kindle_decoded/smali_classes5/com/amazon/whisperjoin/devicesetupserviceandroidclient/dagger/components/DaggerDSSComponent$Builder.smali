.class public final Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerDSSComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

.field private clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

.field private contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

.field private networkingModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

.field private rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

.field private sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$1;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->networkingModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    return-object p0
.end method


# virtual methods
.method public authModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    .locals 0

    .line 219
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    return-object p0
.end method

.method public build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DSSComponent;
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->networkingModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    const-string v1, " must be set"

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->authModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    if-nez v0, :cond_2

    .line 205
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    if-nez v0, :cond_3

    .line 208
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    .line 210
    :cond_3
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$1;)V

    return-object v0

    .line 199
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clockModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    .locals 0

    .line 234
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->clockModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ClockModule;

    return-object p0
.end method

.method public contextModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    .locals 0

    .line 214
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->contextModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/ContextModule;

    return-object p0
.end method

.method public networkingModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    .locals 0

    .line 224
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->networkingModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/NetworkingModule;

    return-object p0
.end method

.method public rxModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    .locals 0

    .line 229
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->rxModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/RxModule;

    return-object p0
.end method

.method public sharedPreferencesModule(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;
    .locals 0

    .line 239
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/components/DaggerDSSComponent$Builder;->sharedPreferencesModule:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/SharedPreferencesModule;

    return-object p0
.end method
