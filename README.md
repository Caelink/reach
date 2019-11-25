# reach
This repository is a Prototype for my Human Computer Interaction course, cs449.

# Component Analysis

## Home Screen
- [x] Home Title
- [x] Search primary action
- [x] Simple Carousels using a Event Info Tile

Event Info Tile:
- [x] Title
- [x] Event Host
- [ ] Event Time
- [ ] Background Image
- [ ] Text visibility overlay?
- [ ] If any attendees are friends, show their heads at the bottom in a horizontal list

## Tabs
- [x] Primary action is a right action item on the nav bar, which is enabled

## Inbox Tab
- [x] Navigation bar title
- [x] Write New Message primary action
- [x] List of Conversation Summary Tiles

Conversation Summary Tiles
- [x] Profile Picture
- [x] Bolded Name (1 line)
- [x] Light weight timestamp to the right
- [x] Conversation Preview (2 lines)

## Friends Tab
- [x] Nav bar title
- [x] Plus button primary action
- [ ] Edit button primary action
- [ ] Pull to reveal Search bar
- [x] List of Friend attending event items

Friend Attending Event Item
- [x] Friend's profile picture
- [x] Friend's Name headline
- [x] Rounded rectangle outlining event details
- [x] Event Title bolded (1 line)
- [x] Event time (1 line)
- [ ] Event Image to right (dunno what to use here)

## Profile Tab
- [ ] Profile Picture with 'change' hinting text
- [ ] Heading weight name
- [ ] Description
- [ ] Interests Section is a horizontal list with line expansion, terminated by 'add interest'
- [ ] Vertical Scrolling section of Event Info Tiles

## Event Details Page
- [ ] Header of the event image(s)
- [ ] RSVP Title and respond option beside it
- [ ] Event Description
  - [ ] Event Host, Location and Time at top w/ symbols
  - [ ] Description textbox below with event details
- [ ] List of Information Sections
  - [ ] People, Announcements, Q&A

Information Section
- [ ] Header weight Title aligned left
- [ ] (optional) Primary CtA aligned right 
- [ ] Show More Secondary CtA below content
- [ ] General content section
  - [ ] People uses a list of profiles, with profile picture and name underneath
  - [ ] Announcements is a list with profile picture to the left, name as a title, and content
  - [ ] Q&A is complicated, see below

Q&A Section
- [ ] light weight asker header
- [ ] voting buttons aligned right
- [ ] normal text with the question
- [ ] textbox where user can start answering the question

