.class final Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;
.super Lcom/amazon/ksdk/profiles/ProfileProvider;
.source "ProfileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ksdk/profiles/ProfileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CppProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/amazon/ksdk/profiles/ProfileProvider;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 58
    iput-wide p1, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "nativeRef is zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_addProfileEventObserver(JLcom/amazon/ksdk/profiles/ProfileEventObserver;)V
.end method

.method private native native_createProfile(JLjava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;
.end method

.method private native native_enrollProfileSuggestion(JLcom/amazon/ksdk/profiles/ProfileSuggestion;)Z
.end method

.method private native native_getActiveProfileCID(J)Ljava/lang/String;
.end method

.method private native native_getProfile(JLjava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;
.end method

.method private native native_getProfileSuggestions(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/ProfileSuggestion;",
            ">;"
        }
    .end annotation
.end method

.method private native native_getProfiles(JLcom/amazon/ksdk/profiles/GetProfilesConfigs;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/ksdk/profiles/GetProfilesConfigs;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/Profile;",
            ">;"
        }
    .end annotation
.end method

.method private native native_removeProfileEventObserver(JLcom/amazon/ksdk/profiles/ProfileEventObserver;)V
.end method

.method private native native_setActiveProfileCID(JLjava/lang/String;)V
.end method


# virtual methods
.method public _djinni_private_destroy()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeDestroy(J)V

    :cond_0
    return-void
.end method

.method public addProfileEventObserver(Lcom/amazon/ksdk/profiles/ProfileEventObserver;)V
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_addProfileEventObserver(JLcom/amazon/ksdk/profiles/ProfileEventObserver;)V

    return-void
.end method

.method public createProfile(Ljava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;
    .locals 7

    .line 124
    iget-wide v1, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_createProfile(JLjava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;

    move-result-object p1

    return-object p1
.end method

.method public enrollProfileSuggestion(Lcom/amazon/ksdk/profiles/ProfileSuggestion;)Z
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_enrollProfileSuggestion(JLcom/amazon/ksdk/profiles/ProfileSuggestion;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->_djinni_private_destroy()V

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exception: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getActiveProfileCID()Ljava/lang/String;
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_getActiveProfileCID(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_getProfile(JLjava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;

    move-result-object p1

    return-object p1
.end method

.method public getProfileSuggestions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/ProfileSuggestion;",
            ">;"
        }
    .end annotation

    .line 116
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_getProfileSuggestions(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles(Lcom/amazon/ksdk/profiles/GetProfilesConfigs;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ksdk/profiles/GetProfilesConfigs;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/Profile;",
            ">;"
        }
    .end annotation

    .line 108
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_getProfiles(JLcom/amazon/ksdk/profiles/GetProfilesConfigs;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public removeProfileEventObserver(Lcom/amazon/ksdk/profiles/ProfileEventObserver;)V
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_removeProfileEventObserver(JLcom/amazon/ksdk/profiles/ProfileEventObserver;)V

    return-void
.end method

.method public setActiveProfileCID(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;->native_setActiveProfileCID(JLjava/lang/String;)V

    return-void
.end method
