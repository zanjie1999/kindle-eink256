.class public final Lcom/audible/android/kcp/common/AiRPreferencesStore;
.super Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;
.source "AiRPreferencesStore.java"

# interfaces
.implements Lcom/audible/mobile/preferences/PreferenceStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;",
        "Lcom/audible/mobile/preferences/PreferenceStore<",
        "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "AiRPreferences"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Z)Z
    .locals 0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getBoolean(Ljava/lang/Object;Z)Z
    .locals 0

    .line 19
    check-cast p1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/common/AiRPreferencesStore;->getBoolean(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;F)F
    .locals 0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getString(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    check-cast p1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/common/AiRPreferencesStore;->getString(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Z)V
    .locals 0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic setBoolean(Ljava/lang/Object;Z)V
    .locals 0

    .line 19
    check-cast p1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/common/AiRPreferencesStore;->setBoolean(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Z)V

    return-void
.end method

.method public setFloat(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;F)V
    .locals 0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setString(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setString(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;

    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/common/AiRPreferencesStore;->setString(Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;Ljava/lang/String;)V

    return-void
.end method
