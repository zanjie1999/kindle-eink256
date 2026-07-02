.class public final synthetic Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk$SignalHandlerInstaller;


# instance fields
.field private final synthetic f$0:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:J

.field private final synthetic f$4:Lcom/google/firebase/crashlytics/internal/model/StaticSessionData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$0:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$3:J

    iput-object p6, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$4:Lcom/google/firebase/crashlytics/internal/model/StaticSessionData;

    return-void
.end method


# virtual methods
.method public final installHandler()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$0:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$3:J

    iget-object v5, p0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$FirebaseCrashlyticsNdk$uWXEmlTQlEwiUIn6o2ZyerrhSEM;->f$4:Lcom/google/firebase/crashlytics/internal/model/StaticSessionData;

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->lambda$prepareNativeSession$0$FirebaseCrashlyticsNdk(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)V

    return-void
.end method
