		# NOTE: You *MUST* actually do any html escaping here that is necessary.

CREATE TABLE IF NOT EXISTS URLRecord (
	id INT (11) NOT NULL AUTO_INCREMENT,
	Title VARCHAR(255) NOT NULL DEFAULT '',
	Description VARCHAR(255) NOT NULL DEFAULT '',
	URL VARCHAR(255) NOT NULL DEFAULT '',
	Image VARCHAR(255) NOT NULL DEFAULT '',
	AppID VARCHAR(255) NOT NULL DEFAULT '',
	RedirectURL VARCHAR(255) NOT NULL DEFAULT '',
	Via VARCHAR(255) NOT NULL DEFAULT '',
	HashTags VARCHAR(255) NOT NULL DEFAULT '',
	Provider VARCHAR(255) NOT NULL DEFAULT '',
	Language VARCHAR(255) NOT NULL DEFAULT '',
	UserID VARCHAR(255) NOT NULL DEFAULT '',
	Category VARCHAR(255) NOT NULL DEFAULT '',
	PhoneNumber VARCHAR(255) NOT NULL DEFAULT '',
	EmailAddress VARCHAR(255) NOT NULL DEFAULT '',
	CCEmailAddress VARCHAR(255) NOT NULL DEFAULT '',
	BCCEmailAddress VARCHAR(255) NOT NULL DEFAULT '',
	PRIMARY KEY (id)
);

INSERT INTO URLRecord (
	Title,
	Description,
	URL,
	Image,
	AppId,
	RedirectURL,
	Via,
	HashTags,
	Provider,
	Language,
	UserID,
	Category,
	PhoneNumber,
	EmailAddress,
	CCEmailAddress,
	BCCEmailAddress
) VALUES (
	'EarthFluent',
	'Want%20to%20learn%20another%20language%3F%20%20Learn%20Spanish%2C%20French%2C%20Italian%2C%20German%2C%20Japanese%2C%20Chinese%2C%20Hindi%2C%20Indonesian%2C%20Dutch%2C%20Polish%2C%20Portuguese%2C%20or%20Russian%21',
	'http%3A%2F%2Fwww.earthfluent.com%2F',
	'',
	'',
	'',
	'',
	'language%20learning,self%20teaching,learn%20french',
	'EarthFluent',
	'EN',
	'',
	'Education',
	'',
	'',
	'',
	''
);

SELECT
	CONCAT('http://www.addthis.com/bookmark.php?url=', URL) as AddThis,
	CONCAT('https://www.blogger.com/blog-this.g?u=', URL, '&n=', Title, '&t=', Description) as Blogger,
	CONCAT('https://buffer.com/add?text=', Description, '&url=', URL) as Buffer,
	CONCAT('https://share.diasporafoundation.org/?title=', Title, '&url=', URL) as Diaspora,
	CONCAT('http://digg.com/submit?url=', URL, '&title=', Title) as Digg,
	CONCAT('http://www.douban.com/recommend/?url=', URL, '&title=', Title) as Douban,
	CONCAT('mailto:', EmailAddress, '?subject=', Title, '&body=', URL) as Email,
	CONCAT('http://www.evernote.com/clip.action?url=', URL, '&title=', Title) as EverNote,
	CONCAT('https://getpocket.com/edit?url=', URL) as GetPocket,
	CONCAT('http://www.facebook.com/sharer.php?u=', URL) as FaceBook,
	CONCAT('https://flattr.com/submit/auto?user_id=', UserID, '&url=', URL, '&title=', Title, '&description=', Description, '&language=', Language, '&tags=', HashTags, '&hidden=HIDDEN&category=', category) as Flattr,
	CONCAT('https://share.flipboard.com/bookmarklet/popout?v=2&title=', Title, '&url=', URL) as FlipBoard,
	CONCAT('https://mail.google.com/mail/?view=cm&to=', EmailAddress, '&su=', Title, '&body=', URL, '&bcc=', BCCEmailAddress, '&cc=', CCEmailAddress) as Gmail,
	CONCAT('https://www.google.com/bookmarks/mark?op=edit&bkmk=', URL, '&title=', Title, '&annotation=', Description, '&labels=', HashTags) as GoogleBookmarks,
	CONCAT('http://www.instapaper.com/edit?url=', URL, '&title=', Title, '&description=', Description) as InstaPaper,
	CONCAT('https://lineit.line.me/share/ui?url=', URL, '&text=', Description) as LineMe,
	CONCAT('https://www.linkedin.com/shareArticle?mini=true&url=', URL, '&title=', Title, '&summary=', Description, '&source=', Provider) as LinkedIn,
	CONCAT('http://www.livejournal.com/update.bml?subject=', Title, '&event=', URL) as LiveJournal,
	CONCAT('https://news.ycombinator.com/submitlink?u=', URL, '&t=', Title) as HackerNews,
	CONCAT('https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=', URL) as OKRU,
	CONCAT('http://pinterest.com/pin/create/button/?url=', URL) as Pinterest,
	CONCAT('https://plus.google.com/share?url=', URL, '&text=', Description, '&hl=', Language) as GooglePlus,
	CONCAT('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=', URL) as QZone,
	CONCAT('https://reddit.com/submit?url=', URL, '&title=', Title) as RedDit,
	CONCAT('http://widget.renren.com/dialog/share?resourceUrl=', URL, '&srcUrl=', URL, '&title=', Title, '&description=', Description) as RenRen,
	CONCAT('https://web.skype.com/share?url=', URL, '&text=', description) as Skype,
	CONCAT('sms:', PhoneNumber, '?body=', Description) as SMS,
	CONCAT('http://www.stumbleupon.com/submit?url=', URL, '&title=', Description) as StumbleUpon,
	CONCAT('http://surfingbird.ru/share?url=', URL, '&description=', Description, '&screenshot=', Image, '&title=', Title) as SurfingBird,
	CONCAT('https://t.me/share/url?url=', URL, '&text=', Description, '&to=', PhoneNumber) as Telegramme,
	CONCAT('threema://compose?text=', URL, '&id=', UserID) as Threema,
	CONCAT('https://www.tumblr.com/widgets/share/tool?canonicalUrl=', URL, '&title=', Title, '&caption=', Description, '&tags=', HashTags) as Tumblr,
	CONCAT('https://twitter.com/intent/tweet?url=', URL, '&text=', Description, '&via=', Via, '&hashtags=', HashTags) as Twitter,
	CONCAT('http://vk.com/share.php?url=', URL, '&title=', Title, '&comment=', Description) as VK,
	CONCAT('http://service.weibo.com/share/share.php?url=', URL, '&appkey=&title=', Title, '&pic=&ralateUid=') as Weibo,
	CONCAT('https://www.xing.com/app/user?op=share&url=', URL) as Xing,
	CONCAT('http://compose.mail.yahoo.com/?to=', EmailAddress, '&subject=', Title, '&body=', URL) as Yahoo
FROM URLRecord;