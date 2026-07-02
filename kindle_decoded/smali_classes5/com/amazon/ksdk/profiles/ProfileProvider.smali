.class public abstract Lcom/amazon/ksdk/profiles/ProfileProvider;
.super Ljava/lang/Object;
.source "ProfileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/profiles/ProfileProvider$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addProfileEventObserver(Lcom/amazon/ksdk/profiles/ProfileEventObserver;)V
.end method

.method public abstract createProfile(Ljava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;
.end method

.method public abstract enrollProfileSuggestion(Lcom/amazon/ksdk/profiles/ProfileSuggestion;)Z
.end method

.method public abstract getActiveProfileCID()Ljava/lang/String;
.end method

.method public abstract getProfile(Ljava/lang/String;)Lcom/amazon/ksdk/profiles/Profile;
.end method

.method public abstract getProfileSuggestions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/ProfileSuggestion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfiles(Lcom/amazon/ksdk/profiles/GetProfilesConfigs;)Ljava/util/ArrayList;
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
.end method

.method public abstract removeProfileEventObserver(Lcom/amazon/ksdk/profiles/ProfileEventObserver;)V
.end method

.method public abstract setActiveProfileCID(Ljava/lang/String;)V
.end method
