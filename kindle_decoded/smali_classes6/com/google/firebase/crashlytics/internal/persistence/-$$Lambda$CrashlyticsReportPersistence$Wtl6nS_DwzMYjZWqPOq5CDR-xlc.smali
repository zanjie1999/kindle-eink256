.class public final synthetic Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$Wtl6nS_DwzMYjZWqPOq5CDR-xlc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$Wtl6nS_DwzMYjZWqPOq5CDR-xlc;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$Wtl6nS_DwzMYjZWqPOq5CDR-xlc;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->lambda$capAndGetOpenSessions$3(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
